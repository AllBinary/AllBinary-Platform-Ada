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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;

package body org.allbinary.graphics.Anchor_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   procedure Initialize_Fields (This : in out Anchor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out Anchor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return Anchor_Access is
      This : constant Anchor_Access := new Anchor;
   begin
      Anchor_Package.Initialize (This.all);
      return This;
   end Create;


begin
   null;
   TOP_LEFT := Java_And (Graphics_Package.TOP, Graphics_Package.LEFT);

end org.allbinary.graphics.Anchor_Package;


