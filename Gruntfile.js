'use strict';

module.exports = function(grunt) {

	grunt.initConfig({

		pkg: grunt.file.readJSON('package.json'),

		watch: {
			md: {
				files: 'slides/*.md',
				tasks: ['md2slides:all'],
				options: {
					livereload: true
				}
			}
		},

		md2slides: {
			options: {
					mainTemplate: 'templates/main.tpl',
					sectionTemplate: 'templates/section.tpl'
			},
			all: {
				files: [{
					src: ['slides/*.md'],
					dest: 'output/index.html'
				}]
			}
		},

    connect: {
      server: {
				options: {
					base: 'output',
					livereload: true
				}
			}
    }

	});

  grunt.loadNpmTasks('grunt-contrib-connect');
	grunt.loadNpmTasks('grunt-contrib-watch');
	grunt.registerTask('default', ['md2slides', 'connect', 'watch']);

	grunt.registerMultiTask('md2slides', 'just a test task...', function() {

		var output = "";
		var marked = require("marked");
		var mainTemplate, sectionTemplate;

		if (this.options().mainTemplate && grunt.file.exists(this.options().mainTemplate)) {
			grunt.log.writeln('Using "' + this.options().mainTemplate) + '" as main template.';
			mainTemplate = grunt.file.read(this.options().mainTemplate);
		} else {
			grunt.log.warn("Main template file (options.mainTemplate) missing!");
			return false;
		}

		if (this.options().sectionTemplate && grunt.file.exists(this.options().sectionTemplate)) {
			grunt.log.writeln('Using "' + this.options().sectionTemplate) + '" as section template.';
			sectionTemplate = grunt.file.read(this.options().sectionTemplate);
		} else {
			grunt.log.warn("Section template file (options.sectionTemplate) missing!");
			return false;
		}

		this.files.forEach(function(file) {
			output = file.src.filter(function(filepath) {
				// Remove non-existent files
				if (!grunt.file.exists(filepath)) {
					grunt.log.warn('Source file "' + filepath + '" not found.');
					return false;
				} else {
					return true;
				}
			}).map(function(filepath) {
				// Read the file's content
				var section = grunt.file.read(filepath);

				// transform markdown to html
				section = marked(section);

				// wrap in section template
				section = grunt.template.process(sectionTemplate, { data: { content: section } });

				return section;
			}).join('\n');

			// Wrap output in main template
			output = grunt.template.process(mainTemplate, { data: { document: output } });

			// Write joined output to destination filepath.
			grunt.file.write(file.dest, output);
			// Print a success message.
			grunt.log.writeln('File "' + file.dest + '" created.');
		});

	});

};