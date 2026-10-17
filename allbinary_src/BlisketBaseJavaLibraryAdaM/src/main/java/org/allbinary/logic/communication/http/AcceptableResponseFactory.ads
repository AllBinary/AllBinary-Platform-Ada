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

package org.allbinary.logic.communication.http.AcceptableResponseFactory_Package is


   type AcceptableResponseFactory is tagged;
   type AcceptableResponseFactory_Access is access all AcceptableResponseFactory'Class;
   type AcceptableResponseFactory_Access_Array is array (Natural range <>) of AcceptableResponseFactory_Access;
   type AcceptableResponseFactory_Access_Array_Access is access all AcceptableResponseFactory_Access_Array;

   type AcceptableResponseFactory is new Java_Object with record
      HTML : AcceptableResponse_Access;
      WML : AcceptableResponse_Access;
      VXML : AcceptableResponse_Access;
   end record;
   instance : AcceptableResponseFactory_Access;

   procedure Initialize (This : in out AcceptableResponseFactory'Class);
   function Create return AcceptableResponseFactory_Access;
   function getInstance return AcceptableResponseFactory_Access;
   procedure getInstance;

end org.allbinary.logic.communication.http.AcceptableResponseFactory_Package;


