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


with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package; use org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.game.input.DesktopDefaultGameInputMapping_Package; use org.allbinary.game.input.DesktopDefaultGameInputMapping_Package;
with org.allbinary.game.input.DesktopDefaultGameInputMapping_Package;
with org.allbinary.game.input.PCGameInputMapping_Package;

package body org.allbinary.game.input.DesktopGameInputMapping_Package is

   subtype InputToGameKeyMapping_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access;
   function "=" (Left, Right : InputToGameKeyMapping_Access) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   procedure Initialize_Fields (This : in out DesktopGameInputMapping'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out DesktopGameInputMapping'Class) is
   begin
      PCGameInputMapping_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return DesktopGameInputMapping_Access is
      This : constant DesktopGameInputMapping_Access := new DesktopGameInputMapping;
   begin
      DesktopGameInputMapping_Package.Initialize (This.all);
      return This;
   end Create;


   function getDefault (This : in out DesktopGameInputMapping) return InputToGameKeyMapping_Access is
   begin
        return DesktopDefaultGameInputMapping_Package.Create.getInputMapping;
   end getDefault;

end org.allbinary.game.input.DesktopGameInputMapping_Package;


