--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.graphics.opengles.OpenGLOptions_Package is

   procedure Initialize_Fields (This : in out OpenGLOptions'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLOptions'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLOptions_Access is
      This : constant OpenGLOptions_Access := new OpenGLOptions;
   begin
      Initialize (This.all);
      return This;
   end Create;


   procedure init (This : in out OpenGLOptions) is
      openGLFeatureFactory : OpenGLFeatureFactory_Access;
      openGLMultipleList : BasicArrayList_Access;
      openGLVersionSelectorMultipleList : BasicArrayList_Access;
      openGLImageColorMultipleList : BasicArrayList_Access;
   begin
        openGLFeatureFactory := OpenGLFeatureFactory_Package.getInstance;
        if Features_Package.getInstance.isFeature (openGLFeatureFactory.OPENGL_OPTIONS) then
            openGLMultipleList := BasicArrayListD_Package.Create;
            openGLMultipleList.add (openGLFeatureFactory.OPENGL);
            GameFeatureChoiceGroups_Package.getMultipleInstance.add (To_Unbounded_String ("OpenGL (Complete Restart)"), openGLMultipleList);
            openGLVersionSelectorMultipleList := BasicArrayListD_Package.Create;
            openGLVersionSelectorMultipleList.add (openGLFeatureFactory.OPENGL_AUTO_SELECT);
            openGLVersionSelectorMultipleList.add (openGLFeatureFactory.OPENGL_MINIMUM);
            GameFeatureChoiceGroups_Package.getExclusiveInstance.add (To_Unbounded_String ("OpenGL Version Selector"), openGLVersionSelectorMultipleList);
            openGLImageColorMultipleList := BasicArrayListD_Package.Create;
            openGLImageColorMultipleList.add (openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444);
            openGLImageColorMultipleList.add (openGLFeatureFactory.IMAGE_COLOR_DEPTH_8888);
            GameFeatureChoiceGroups_Package.getExclusiveInstance.add (To_Unbounded_String ("OpenGL Image Color RGBA"), openGLImageColorMultipleList);
        end if;
   end init;

end org.allbinary.graphics.opengles.OpenGLOptions_Package;


