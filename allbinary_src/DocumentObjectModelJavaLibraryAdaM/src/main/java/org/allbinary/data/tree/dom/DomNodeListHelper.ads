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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;

package org.allbinary.data.tree.dom.DomNodeListHelper_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;

   type DomNodeListHelper is tagged;
   type DomNodeListHelper_Access is access all DomNodeListHelper'Class;
   type DomNodeListHelper_Access_Array is array (Natural range <>) of DomNodeListHelper_Access;
   type DomNodeListHelper_Access_Array_Access is access all DomNodeListHelper_Access_Array;
   type DomNodeListHelper_Access_Array_Access_Array is array (Natural range <>) of DomNodeListHelper_Access_Array_Access;
   type DomNodeListHelper_Access_Array_Access_Array_Access is access all DomNodeListHelper_Access_Array_Access_Array;

   type DomNodeListHelper is new Java_Object with null record;

   procedure Initialize (This : in out DomNodeListHelper'Class);
   function Create return DomNodeListHelper_Access;
   function getVector (nodeList_Param : access NodeList_Package.NodeList'Class) return BasicArrayList_Access;
   procedure getVector (nodeList_Param : access NodeList_Package.NodeList'Class);

end org.allbinary.data.tree.dom.DomNodeListHelper_Package;


