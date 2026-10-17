-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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


package body org.allbinary.game.input.RTSLayerFormFactory_Package is

   procedure Initialize_Fields (This : in out RTSLayerFormFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out RTSLayerFormFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RTSLayerFormFactory_Access is
      This : constant RTSLayerFormFactory_Access := new RTSLayerFormFactory;
   begin
      RTSLayerFormFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out RTSLayerFormFactory; rtsLayer_Param : access RTSLayer'Class) return ScrollSelectionForm_Access is
      rtsLayer : RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getInstance;

   procedure getInstance (This : in out RTSLayerFormFactory; rtsLayer_Param : access RTSLayer'Class) is
      Java_Result : constant ScrollSelectionForm_Access := RTSLayerFormFactory'Class (This).getInstance (rtsLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.input.RTSLayerFormFactory_Package;


