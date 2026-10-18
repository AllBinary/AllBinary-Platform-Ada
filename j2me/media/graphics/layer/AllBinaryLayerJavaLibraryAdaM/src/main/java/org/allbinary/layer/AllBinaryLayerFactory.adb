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


with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.view.ViewPosition_Package; use org.allbinary.view.ViewPosition_Package;

package body org.allbinary.layer.AllBinaryLayerFactory_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package ViewPosition_Package renames Standard.org.allbinary.view.ViewPosition_Package;
   procedure Initialize_Fields (This : in out AllBinaryLayerFactory'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryLayerFactory'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class) is
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
   begin
      Initialize_Fields (This);
        This.rectangle := rectangle;
   end Initialize;

   function Create (rectangle_Param : access Rectangle_Package.Rectangle'Class) return AllBinaryLayerFactory_Access is
      This : constant AllBinaryLayerFactory_Access := new AllBinaryLayerFactory;
   begin
      AllBinaryLayerFactory_Package.Initialize (This.all, rectangle_Param);
      return This;
   end Create;

   function getInstance (This : in out AllBinaryLayerFactory) return AllBinaryLayer_Access is
   begin
        return AllBinaryLayer_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, This.rectangle, ViewPosition_Package.getInstanceD);
   end getInstance;

end org.allbinary.layer.AllBinaryLayerFactory_Package;


