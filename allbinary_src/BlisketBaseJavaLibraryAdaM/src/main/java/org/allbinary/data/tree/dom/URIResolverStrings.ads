-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

package org.allbinary.data.tree.dom.URIResolverStrings_Package is


   type URIResolverStrings is tagged;
   type URIResolverStrings_Access is access all URIResolverStrings'Class;
   type URIResolverStrings_Access_Array is array (Natural range <>) of URIResolverStrings_Access;
   type URIResolverStrings_Access_Array_Access is access all URIResolverStrings_Access_Array;
   type URIResolverStrings_Access_Array_Access_Array is array (Natural range <>) of URIResolverStrings_Access_Array_Access;
   type URIResolverStrings_Access_Array_Access_Array_Access is access all URIResolverStrings_Access_Array_Access_Array;

   type URIResolverStrings is new Java_Object with record
      IMPORT_URL : Unbounded_String;
      ATTEMPT : Unbounded_String;
      BASE : Unbounded_String;
      NEW_PATH : Unbounded_String;
      NOTE : Unbounded_String;
      URL_GLOBAL : Unbounded_String;
      REQUIRED_EXTENSION : Unbounded_String;
      RESOLVE : Unbounded_String;
   end record;
   instance : URIResolverStrings_Access;

   procedure Initialize (This : in out URIResolverStrings'Class);
   function Create return URIResolverStrings_Access;
   function getInstance return URIResolverStrings_Access;

end org.allbinary.data.tree.dom.URIResolverStrings_Package;


