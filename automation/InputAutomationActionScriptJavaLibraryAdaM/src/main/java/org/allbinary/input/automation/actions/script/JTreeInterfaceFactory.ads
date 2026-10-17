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

package org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package is


   type JTreeInterfaceFactory is tagged;
   type JTreeInterfaceFactory_Access is access all JTreeInterfaceFactory'Class;
   type JTreeInterfaceFactory_Access_Array is array (Natural range <>) of JTreeInterfaceFactory_Access;
   type JTreeInterfaceFactory_Access_Array_Access is access all JTreeInterfaceFactory_Access_Array;

   type JTreeInterfaceFactory is new Java_Object with record
      jTreeInterface : JTreeInterface_Access;
   end record;
   instance : JTreeInterfaceFactory_Access;

   procedure Initialize (This : in out JTreeInterfaceFactory'Class);
   function Create return JTreeInterfaceFactory_Access;
   function getInstance return JTreeInterfaceFactory_Access;
   procedure getInstance;
   procedure set (This : in out JTreeInterfaceFactory; jTreeInterface : JTreeInterface_Access);
   function getJTreeInterface (This : in out JTreeInterfaceFactory) return JTreeInterface_Access;
   procedure getJTreeInterface (This : in out JTreeInterfaceFactory);

end org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package;


