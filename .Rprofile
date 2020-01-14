Sys.setenv(R_LIBS_USER = "/home/rstudio/.rpackages")
setHook("rstudio.sessionInit", function(newSession) {
   if (newSession){
     if( is.null(rstudioapi::getActiveProject()) ){
        # Find a project file

        aProject = dirname(list.files(pattern = ".rproj",
                                      recursive = T,
                                      ignore.case = T,
                                      full.names = T,
                                      path = "/home/rstudio"))
       # Open that project!
       rstudioapi::openProject(aProject[1])
   }


}
   if(!is.null(rstudioapi::getActiveProject())){
     #rstudioapi::navigateToFile("README.md")
   }
}, action = "append")
