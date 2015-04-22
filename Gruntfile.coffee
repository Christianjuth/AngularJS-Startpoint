module.exports = (grunt)->

  #start timer
  require('time-grunt')(grunt)

  #load all grunt tasks matching the ['grunt-*', '@*/grunt-*'] patterns
  require('load-grunt-tasks')(grunt)

  #Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json')

    sass:
      dist:
        files:
          'app/css/main.css': 'app/sass/main.scss'

    coffee:
      options :
        bare: true
      default :
        expand: true,
        cwd: 'app/coffee',
        src: ['**/*.coffee'],
        dest: 'app/js/<%= srcDir %>/',
        ext: '.js'

#    uglify: {
#      options: {
#        banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */\n'
#      }
#      build: {
#        src: 'src/<%= pkg.name %>.js',
#        dest: 'build/<%= pkg.name %>.min.js'
#      }
#    }

  })

  #Default task(s).
  grunt.registerTask('default', ['sass', 'coffee'])
