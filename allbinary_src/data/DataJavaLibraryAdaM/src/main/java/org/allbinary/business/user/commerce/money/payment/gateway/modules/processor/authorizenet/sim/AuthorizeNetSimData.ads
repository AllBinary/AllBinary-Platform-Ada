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

package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package is


   type AuthorizeNetSimData is tagged;
   type AuthorizeNetSimData_Access is access all AuthorizeNetSimData'Class;
   type AuthorizeNetSimData_Access_Array is array (Natural range <>) of AuthorizeNetSimData_Access;
   type AuthorizeNetSimData_Access_Array_Access is access all AuthorizeNetSimData_Access_Array;

   type AuthorizeNetSimData is new Java_Object with null record;
   X_FP_HASH : Unbounded_String;
   X_FP_SEQUENCE : Unbounded_String;
   X_FP_TIMESTAMP : Unbounded_String;
   X_SHOW_FORM : Unbounded_String;
   X_HEADER_HTML_PAYMENT_FORM : Unbounded_String;
   X_FOOTER_HTML_PAYMENT_FORM : Unbounded_String;
   X_HEADER_HTML_RECEIPT : Unbounded_String;
   X_FOOTER_HTML_RECEIPT : Unbounded_String;
   X_RECEIPT_LINK_TEXT : Unbounded_String;
   X_RECEIPT_LINK_URL : Unbounded_String;
   X_LOGO_URL : Unbounded_String;
   X_BACKGROUND_URL : Unbounded_String;
   X_COLOR_BACKGROUND : Unbounded_String;
   X_COLOR_LINK : Unbounded_String;
   X_COLOR_TEXT : Unbounded_String;
   X_RELAY_URL : Unbounded_String;

   procedure Initialize (This : in out AuthorizeNetSimData'Class);
   function Create return AuthorizeNetSimData_Access;

end org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package;


