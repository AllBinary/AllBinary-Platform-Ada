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


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;

package body org.allbinary.game.displayable.canvas.CanvasUtil_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   procedure Initialize_Fields (This : in out CanvasUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CanvasUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CanvasUtil_Access is
      This : constant CanvasUtil_Access := new CanvasUtil;
   begin
      CanvasUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function getKeyName (key : Integer) return Unbounded_String is
      commonPhoneStrings : CommonPhoneStrings_Access;
   begin
        commonPhoneStrings := CommonPhoneStrings_Package.getInstance;
        if (key) = (Canvas_Package.UP) then
            return commonPhoneStrings.UP;
        elsif (key) = (Canvas_Package.DOWN) then
            return commonPhoneStrings.DOWN;
        elsif (key) = (Canvas_Package.RIGHT) then
            return commonPhoneStrings.RIGHT;
        elsif (key) = (Canvas_Package.LEFT) then
            return commonPhoneStrings.LEFT;
        elsif (key) = (Canvas_Package.FIRE) then
            return commonPhoneStrings.FIRE;
        end if;
        return To_Unbounded_String ("UNKNOWN KEY");
   end getKeyName;

   procedure getKeyName (key : Integer) is
      Java_Result : constant Unbounded_String := getKeyName (key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getKeyName;

end org.allbinary.game.displayable.canvas.CanvasUtil_Package;


