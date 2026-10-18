--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.automation.actions.script.JTreeInterface_Package is


   type JTreeInterface is interface;
   type JTreeInterface_Access is access all JTreeInterface'Class;
   type JTreeInterface_Access_Array is array (Natural range <>) of JTreeInterface_Access;
   type JTreeInterface_Access_Array_Access is access all JTreeInterface_Access_Array;
   type JTreeInterface_Access_Array_Access_Array is array (Natural range <>) of JTreeInterface_Access_Array_Access;
   type JTreeInterface_Access_Array_Access_Array_Access is access all JTreeInterface_Access_Array_Access_Array;
   procedure updateJTree (This : in out JTreeInterface) is abstract;
   function getActionScriptJTree (This : in out JTreeInterface) return JTree_Access is abstract;

end org.allbinary.input.automation.actions.script.JTreeInterface_Package;


