// IE対応、SCSS、JShint、CSSlint

module.exports = function (grunt) {
    'use strict';

    grunt.initConfig({
        compass: {
            dist: {
                options: {
                    config: 'config.rb'
                }
            }
        },
        autoprefixer: {
            options: {
                browsers: ['last 2 version', 'ie 8', 'ie 9']
            },
            no_dest: {
                src: 'css/style.css'
            }
        },
        jshint: {
            all: ['Gruntfile.js', 'js/main.js']
        },
        csslint: {
            strict: {
                options: {
                    import: 2
                },
                src: ['css/*.css']
            },
            lax: {
                options: {
                    import: false
                },
                src: ['css/*.css']
            }
        },
        watch: {
            sass: {
                files: 'sass/*.scss',
                tasks: ['compass']
            },
            autoprefixer: {
                files: 'sass/*.scss',
                tasks: ['autoprefixer']
            },
            jshint: {
                files: 'js/main.js',
                tasks: ['jshint']
            },
            csslint: {
                files: 'css/*.css',
                tasks: ['csslint']
            }
        }
    });

    // package.jsonからloadNpmTasksを追加
    var pkg = grunt.file.readJSON('package.json'),
        taskName;
    for (taskName in pkg.devDependencies) {
        if (taskName.substring(0, 6) === 'grunt-') {
            grunt.loadNpmTasks(taskName);
        }
    }

    grunt.registerTask('default', ['watch']);
};
