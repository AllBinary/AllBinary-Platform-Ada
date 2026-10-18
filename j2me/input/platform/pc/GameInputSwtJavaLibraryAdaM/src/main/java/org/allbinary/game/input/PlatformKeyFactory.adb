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


with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.input.PCGameKey_Package; use org.allbinary.game.input.PCGameKey_Package;
with org.allbinary.game.input.PCKeyFactory_Package; use org.allbinary.game.input.PCKeyFactory_Package;

package body org.allbinary.game.input.PlatformKeyFactory_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   procedure Initialize_Fields (This : in out PlatformKeyFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PlatformKeyFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PlatformKeyFactory_Access is
      This : constant PlatformKeyFactory_Access := new PlatformKeyFactory;
   begin
      PlatformKeyFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PlatformKeyFactory_Access is
   begin
        if (PlatformKeyFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            PlatformKeyFactory_Package.instance := PlatformKeyFactory_Package.Create;
        end if;
        return PlatformKeyFactory_Access (PlatformKeyFactory_Package.instance);
   end getInstance;

   function getString (This : in out PlatformKeyFactory; keyCode : Integer) return Unbounded_String is
   begin
        return PCGameKey_Package.getString (keyCode);
   end getString;

   function isSubmission (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        return PCKeyFactory_Package.getInstance.isSubmission (input);
   end isSubmission;

   function isDelete (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        return PCKeyFactory_Package.getInstance.isDelete (input);
   end isDelete;

   function isBackSpace (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        return PCKeyFactory_Package.getInstance.isBackSpace (input);
   end isBackSpace;

   function isUp (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        return PCKeyFactory_Package.getInstance.isUp (input);
   end isUp;

   function isDown (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        return PCKeyFactory_Package.getInstance.isDown (input);
   end isDown;

   function isEnter (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        return PCKeyFactory_Package.getInstance.isEnter (input);
   end isEnter;

   function isLeft (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        return PCKeyFactory_Package.getInstance.isLeft (input);
   end isLeft;

   function isRight (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        return PCKeyFactory_Package.getInstance.isRight (input);
   end isRight;

   procedure getString (This : in out PlatformKeyFactory; keyCode : Integer) is
      Java_Result : constant Unbounded_String := PlatformKeyFactory'Class (This).getString (keyCode => keyCode);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getString;

   procedure isSubmission (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := PlatformKeyFactory'Class (This).isSubmission (input_Param => input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSubmission;

   procedure isDelete (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := PlatformKeyFactory'Class (This).isDelete (input_Param => input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDelete;

   procedure isBackSpace (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := PlatformKeyFactory'Class (This).isBackSpace (input_Param => input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isBackSpace;

   procedure isUp (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := PlatformKeyFactory'Class (This).isUp (input_Param => input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isUp;

   procedure isDown (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := PlatformKeyFactory'Class (This).isDown (input_Param => input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDown;

   procedure isEnter (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := PlatformKeyFactory'Class (This).isEnter (input_Param => input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isEnter;

   procedure isLeft (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := PlatformKeyFactory'Class (This).isLeft (input_Param => input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isLeft;

   procedure isRight (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := PlatformKeyFactory'Class (This).isRight (input_Param => input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isRight;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.input.PlatformKeyFactory_Package;


