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


package body org.allbinary.graphics.paint.Paintable_Package is

   procedure Initialize_Fields (This : in out Paintable'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out Paintable'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return Paintable_Access is
      This : constant Paintable_Access := new Paintable;
   begin
      Paintable_Package.Initialize (This.all);
      return This;
   end Create;


   procedure setBasicColorP (This : in out Paintable; basicColor : BasicColor_Access) is
   begin
        null;
   end setBasicColorP;

   procedure paint (This : in out Paintable; graphics : Graphics_Access) is
   begin
        null;
   end paint;

   procedure paintThreed (This : in out Paintable; graphics : Graphics_Access) is
   begin
        null;
   end paintThreed;

end org.allbinary.graphics.paint.Paintable_Package;


