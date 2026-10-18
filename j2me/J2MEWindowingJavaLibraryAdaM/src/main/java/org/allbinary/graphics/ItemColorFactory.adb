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



package body org.allbinary.graphics.ItemColorFactory_Package is

   procedure Initialize_Fields (This : in out ItemColorFactory'Class) is
   begin
      null;
      This.INVERT_PAINT := 16#FF000000#;
      This.PAINT := 16#FFe07718#;
      This.TEXT_FIELD_NO_FOCUS := 16#7F7F7F#;
   end Initialize_Fields;

   procedure Initialize (This : in out ItemColorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ItemColorFactory_Access is
      This : constant ItemColorFactory_Access := new ItemColorFactory;
   begin
      ItemColorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ItemColorFactory_Access is
   begin
        return ItemColorFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := ItemColorFactory_Package.Create;

end org.allbinary.graphics.ItemColorFactory_Package;


