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
with org.allbinary.media.audio.NullControl_Package; use org.allbinary.media.audio.NullControl_Package;

package body org.allbinary.media.audio.NoPlayer_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out NoPlayer'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NoPlayer'Class) is
   begin
      BasicPlayer_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NoPlayer_Access is
      This : constant NoPlayer_Access := new NoPlayer;
   begin
      NoPlayer_Package.Initialize (This.all);
      return This;
   end Create;

   procedure close (This : in out NoPlayer) is
   begin
        null;
   end close;

   function getContentType (This : in out NoPlayer) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.NULL_STRING;
   end getContentType;

   function getControl (This : in out NoPlayer; controlType : Unbounded_String) return Control_Access is
   begin
        return Control_Access (NullControl_Package.Create);
   end getControl;

   function getControls (This : in out NoPlayer) return Control_Access_Array_Access is
   begin
        return new Control_Access_Array'(0 .. (0) - 1 => null);
   end getControls;

   procedure getControl (This : in out NoPlayer; controlType : Unbounded_String) is
      Java_Result : constant Control_Access := NoPlayer'Class (This).getControl (controlType => controlType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getControl;

begin
   null;
   NO_PLAYER := NoPlayer_Package.Create;

end org.allbinary.media.audio.NoPlayer_Package;


