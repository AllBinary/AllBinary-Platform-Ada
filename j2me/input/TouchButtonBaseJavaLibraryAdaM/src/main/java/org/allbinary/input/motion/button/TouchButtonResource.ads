-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.motion.button.TouchButtonResource_Package is


   type TouchButtonResource is tagged;
   type TouchButtonResource_Access is access all TouchButtonResource'Class;
   type TouchButtonResource_Access_Array is array (Natural range <>) of TouchButtonResource_Access;
   type TouchButtonResource_Access_Array_Access is access all TouchButtonResource_Access_Array;

   type TouchButtonResource is new Java_Object with record
      RESOURCE : Unbounded_String;
      HINT : Unbounded_String;
   end record;

   procedure Initialize (This : in out TouchButtonResource'Class; resource_Case : Unbounded_String; hint_Case : Unbounded_String);
   function Create (resource_Case : Unbounded_String; hint_Case : Unbounded_String) return TouchButtonResource_Access;

end org.allbinary.input.motion.button.TouchButtonResource_Package;


