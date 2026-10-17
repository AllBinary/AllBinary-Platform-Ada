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
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;

package org.allbinary.data.tree.dom.DomNodeListHelper_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package NodeList_Package renames org.w3c.dom.NodeList_Package;

   type DomNodeListHelper is tagged;
   type DomNodeListHelper_Access is access all DomNodeListHelper'Class;
   type DomNodeListHelper_Access_Array is array (Natural range <>) of DomNodeListHelper_Access;
   type DomNodeListHelper_Access_Array_Access is access all DomNodeListHelper_Access_Array;

   type DomNodeListHelper is new Java_Object with null record;

   procedure Initialize (This : in out DomNodeListHelper'Class);
   function Create return DomNodeListHelper_Access;
   function getVector (nodeList : NodeList_Access) return BasicArrayList_Access;
   procedure getVector (nodeList : NodeList_Access);

end org.allbinary.data.tree.dom.DomNodeListHelper_Package;


