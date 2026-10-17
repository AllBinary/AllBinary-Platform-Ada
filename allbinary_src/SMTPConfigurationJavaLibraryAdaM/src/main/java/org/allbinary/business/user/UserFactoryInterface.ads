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
--  with java.io.Serializable_Package; use java.io.Serializable_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;

package org.allbinary.business.user.UserFactoryInterface_Package is


   type UserFactoryInterface is interface and Serializable;
   type UserFactoryInterface_Access is access all UserFactoryInterface'Class;
   type UserFactoryInterface_Access_Array is array (Natural range <>) of UserFactoryInterface_Access;
   type UserFactoryInterface_Access_Array_Access is access all UserFactoryInterface_Access_Array;
   function getInstance (This : in out UserFactoryInterface; hashMap_Param : access HashMap_Package.HashMap'Class) return UserInterface_Access is abstract;

end org.allbinary.business.user.UserFactoryInterface_Package;


