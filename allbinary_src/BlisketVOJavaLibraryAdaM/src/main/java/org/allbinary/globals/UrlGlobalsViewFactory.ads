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
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;

package org.allbinary.globals.UrlGlobalsViewFactory_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;

   type UrlGlobalsViewFactory is tagged;
   type UrlGlobalsViewFactory_Access is access all UrlGlobalsViewFactory'Class;
   type UrlGlobalsViewFactory_Access_Array is array (Natural range <>) of UrlGlobalsViewFactory_Access;
   type UrlGlobalsViewFactory_Access_Array_Access is access all UrlGlobalsViewFactory_Access_Array;
   type UrlGlobalsViewFactory_Access_Array_Access_Array is array (Natural range <>) of UrlGlobalsViewFactory_Access_Array_Access;
   type UrlGlobalsViewFactory_Access_Array_Access_Array_Access is access all UrlGlobalsViewFactory_Access_Array_Access_Array;

   type UrlGlobalsViewFactory is new Java_Object with null record;

   procedure Initialize (This : in out UrlGlobalsViewFactory'Class);
   function Create return UrlGlobalsViewFactory_Access;
   function getInstance return DomNodeInterface_Access;

end org.allbinary.globals.UrlGlobalsViewFactory_Package;


