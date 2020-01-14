setHook("rstudio.sessionInit", function(newSession) {
   if (newSession){
     if( is.null(rstudioapi::getActiveProject()) ){
        # Find a project file

        aProject = dirname(list.files(pattern = ".rproj",
                                      recursive = T,
                                      ignore.case = T,
                                      full.names = T,
                                      path = "/home/jovyan"))
       # Open that project!
       rstudioapi::openProject(aProject[1])
   }


}
   if(!is.null(rstudioapi::getActiveProject())){
     #rstudioapi::navigateToFile("README.md")
   }
}, action = "append")
