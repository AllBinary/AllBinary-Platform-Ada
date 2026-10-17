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
--  with javax.microedition.midlet.MIDlet_Package; use javax.microedition.midlet.MIDlet_Package;

package org.allbinary.midlet.MidletFactoryInterface_Package is


   type MidletFactoryInterface is tagged;
   type MidletFactoryInterface_Access is access all MidletFactoryInterface'Class;
   type MidletFactoryInterface_Access_Array is array (Natural range <>) of MidletFactoryInterface_Access;
   type MidletFactoryInterface_Access_Array_Access is access all MidletFactoryInterface_Access_Array;

   type MidletFactoryInterface is new Java_Object with null record;

   procedure Initialize (This : in out MidletFactoryInterface'Class);
   function Create return MidletFactoryInterface_Access;
   function getInstance (This : in out MidletFactoryInterface) return MIDlet_Access;
   procedure getInstance (This : in out MidletFactoryInterface);

end org.allbinary.midlet.MidletFactoryInterface_Package;


