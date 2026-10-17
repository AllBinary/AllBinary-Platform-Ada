--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package org.allbinary.game.input.PlatformKeyFactory_Package is

   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;

   type PlatformKeyFactory is tagged;
   type PlatformKeyFactory_Access is access all PlatformKeyFactory'Class;
   type PlatformKeyFactory_Access_Array is array (Natural range <>) of PlatformKeyFactory_Access;
   type PlatformKeyFactory_Access_Array_Access is access all PlatformKeyFactory_Access_Array;

   type PlatformKeyFactory is new Java_Object with record
      androidKeyFactory : AndroidKeyFactory_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out PlatformKeyFactory'Class);
   function Create return PlatformKeyFactory_Access;
   function getInstance return PlatformKeyFactory_Access;
   procedure getInstance;
   function getString (This : in out PlatformKeyFactory; keyCode : Integer) return Unbounded_String;
   procedure getString (This : in out PlatformKeyFactory; keyCode : Integer);
   function isSubmission (This : in out PlatformKeyFactory; input : Input_Access) return Boolean;
   procedure isSubmission (This : in out PlatformKeyFactory; input : Input_Access);
   function isDelete (This : in out PlatformKeyFactory; input : Input_Access) return Boolean;
   procedure isDelete (This : in out PlatformKeyFactory; input : Input_Access);
   function isBackSpace (This : in out PlatformKeyFactory; input : Input_Access) return Boolean;
   procedure isBackSpace (This : in out PlatformKeyFactory; input : Input_Access);
   function isLeft (This : in out PlatformKeyFactory; input : Input_Access) return Boolean;
   procedure isLeft (This : in out PlatformKeyFactory; input : Input_Access);
   function isRight (This : in out PlatformKeyFactory; input : Input_Access) return Boolean;
   procedure isRight (This : in out PlatformKeyFactory; input : Input_Access);
   function isUp (This : in out PlatformKeyFactory; input : Input_Access) return Boolean;
   procedure isUp (This : in out PlatformKeyFactory; input : Input_Access);
   function isDown (This : in out PlatformKeyFactory; input : Input_Access) return Boolean;
   procedure isDown (This : in out PlatformKeyFactory; input : Input_Access);
   function isEnter (This : in out PlatformKeyFactory; input : Input_Access) return Boolean;
   procedure isEnter (This : in out PlatformKeyFactory; input : Input_Access);

end org.allbinary.game.input.PlatformKeyFactory_Package;


