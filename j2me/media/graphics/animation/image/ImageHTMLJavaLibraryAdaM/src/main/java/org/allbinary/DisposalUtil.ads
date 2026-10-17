-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.eclipse.swt.graphics.Resource_Package; use org.eclipse.swt.graphics.Resource_Package;

package org.allbinary.DisposalUtil_Package is

   package Resource_Package renames Standard.org.eclipse.swt.graphics.Resource_Package;

   type DisposalUtil is tagged;
   type DisposalUtil_Access is access all DisposalUtil'Class;
   type DisposalUtil_Access_Array is array (Natural range <>) of DisposalUtil_Access;
   type DisposalUtil_Access_Array_Access is access all DisposalUtil_Access_Array;

   type DisposalUtil is new Java_Object with null record;
   instance : DisposalUtil_Access;

   procedure Initialize (This : in out DisposalUtil'Class);
   function Create return DisposalUtil_Access;
   function getInstance return DisposalUtil_Access;
   procedure getInstance;
   procedure dispose (This : in out DisposalUtil; resource : Resource_Access);

end org.allbinary.DisposalUtil_Package;


