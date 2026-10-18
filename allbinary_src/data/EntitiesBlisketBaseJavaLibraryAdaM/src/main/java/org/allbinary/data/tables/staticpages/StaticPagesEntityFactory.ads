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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.data.tables.staticpages.StaticPagesEntity_Package; use org.allbinary.data.tables.staticpages.StaticPagesEntity_Package;

package org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type StaticPagesEntityFactory is tagged;
   type StaticPagesEntityFactory_Access is access all StaticPagesEntityFactory'Class;
   type StaticPagesEntityFactory_Access_Array is array (Natural range <>) of StaticPagesEntityFactory_Access;
   type StaticPagesEntityFactory_Access_Array_Access is access all StaticPagesEntityFactory_Access_Array;
   type StaticPagesEntityFactory_Access_Array_Access_Array is array (Natural range <>) of StaticPagesEntityFactory_Access_Array_Access;
   type StaticPagesEntityFactory_Access_Array_Access_Array_Access is access all StaticPagesEntityFactory_Access_Array_Access_Array;

   type StaticPagesEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : StaticPagesEntityFactory_Access;

   procedure Initialize (This : in out StaticPagesEntityFactory'Class);
   function Create return StaticPagesEntityFactory_Access;
   function getInstance return StaticPagesEntityFactory_Access;
   function getStaticPagesEntityInstance (This : in out StaticPagesEntityFactory) return StaticPagesEntity_Access;

end org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package;


