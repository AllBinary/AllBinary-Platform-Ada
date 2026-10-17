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


package body org.allbinary.layer.AllBinaryLayerFactory_Package is

   procedure Initialize_Fields (This : in out AllBinaryLayerFactory'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryLayerFactory'Class; rectangle : Rectangle_Access) is
   begin
      Initialize_Fields (This);
        This.rectangle := rectangle;
   end Initialize;

   function Create (rectangle : Rectangle_Access) return AllBinaryLayerFactory_Access is
      This : constant AllBinaryLayerFactory_Access := new AllBinaryLayerFactory;
   begin
      Initialize (This.all, rectangle);
      return This;
   end Create;

   function getInstance (This : in out AllBinaryLayerFactory) return AllBinaryLayer_Access is
   begin
        return AllBinaryLayer_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, This.rectangle, ViewPosition_Package.getInstanceD);
   end getInstance;

   procedure getInstance (This : in out AllBinaryLayerFactory) is
      Java_Result : constant AllBinaryLayer_Access := AllBinaryLayerFactory'Class (This).getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.layer.AllBinaryLayerFactory_Package;


