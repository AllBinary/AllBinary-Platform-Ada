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
with org.apache.commons.fileupload.DefaultFileItemFactory_Package; use org.apache.commons.fileupload.DefaultFileItemFactory_Package;

package org.allbinary.logic.communication.http.AbFileItemFactory_Package is

   package DefaultFileItemFactory_Package renames Standard.org.apache.commons.fileupload.DefaultFileItemFactory_Package;

   type AbFileItemFactory is tagged;
   type AbFileItemFactory_Access is access all AbFileItemFactory'Class;
   type AbFileItemFactory_Access_Array is array (Natural range <>) of AbFileItemFactory_Access;
   type AbFileItemFactory_Access_Array_Access is access all AbFileItemFactory_Access_Array;

   type AbFileItemFactory is new DefaultFileItemFactory with null record;

   procedure Initialize (This : in out AbFileItemFactory'Class);
   function Create return AbFileItemFactory_Access;

end org.allbinary.logic.communication.http.AbFileItemFactory_Package;


