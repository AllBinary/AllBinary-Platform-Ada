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


package body org.allbinary.layer.NullLayer_Package is

   procedure Initialize_Fields (This : in out NullLayer'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return NullLayer_Access is
   begin
        return NullLayer_Package.instance;
   end getInstance;

   procedure Initialize (This : in out NullLayer'Class) is
   begin
        Layer_Package.Initialize (This, 0, 0);
   end Initialize;

   function Create return NullLayer_Access is
      This : constant NullLayer_Access := new NullLayer;
   begin
      NullLayer_Package.Initialize (This.all);
      return This;
   end Create;

   procedure paint (This : in out NullLayer; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paint;

begin
   null;
   instance := NullLayer_Package.Create;

end org.allbinary.layer.NullLayer_Package;


