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

package org.osgi.framework.NullServiceReferenceFactory_Package is


   type NullServiceReferenceFactory is tagged;
   type NullServiceReferenceFactory_Access is access all NullServiceReferenceFactory'Class;
   type NullServiceReferenceFactory_Access_Array is array (Natural range <>) of NullServiceReferenceFactory_Access;
   type NullServiceReferenceFactory_Access_Array_Access is access all NullServiceReferenceFactory_Access_Array;

   type NullServiceReferenceFactory is new Java_Object with record
      NULL_SERVICE_REFERENCE : NullServiceReference_Access;
   end record;
   instance : NullServiceReferenceFactory_Access;

   procedure Initialize (This : in out NullServiceReferenceFactory'Class);
   function Create return NullServiceReferenceFactory_Access;
   function getInstance return NullServiceReferenceFactory_Access;
   procedure getInstance;

end org.osgi.framework.NullServiceReferenceFactory_Package;


