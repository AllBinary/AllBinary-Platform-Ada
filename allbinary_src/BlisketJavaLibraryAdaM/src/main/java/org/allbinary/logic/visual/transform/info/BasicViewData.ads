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

package org.allbinary.logic.visual.transform.info.BasicViewData_Package is


   type BasicViewData is tagged;
   type BasicViewData_Access is access all BasicViewData'Class;
   type BasicViewData_Access_Array is array (Natural range <>) of BasicViewData_Access;
   type BasicViewData_Access_Array_Access is access all BasicViewData_Access_Array;

   type BasicViewData is new Java_Object with record
      GENERICDIR : Unbounded_String;
      USERDIR : Unbounded_String;
      ADDRESSDIR : Unbounded_String;
      BILLINGADDRESSDIR : Unbounded_String;
      SHIPPINGADDRESSDIR : Unbounded_String;
      COMMERCEDIR : Unbounded_String;
      INVENTORYDIR : Unbounded_String;
      BASKETDIR : Unbounded_String;
      ITEMDIR : Unbounded_String;
      MONEYDIR : Unbounded_String;
      SHIPPINGDIR : Unbounded_String;
      ORDERDIR : Unbounded_String;
      ORDEREMAILDIR : Unbounded_String;
      ORDERHISTORYDIR : Unbounded_String;
      ORDERREVIEWDIR : Unbounded_String;
      PAYMENTDIR : Unbounded_String;
      GENERATIONDIR : Unbounded_String;
      PRODUCTSDIR : Unbounded_String;
      IGNOREXMLXSL : Unbounded_String;
      REVIEWORDERVIEWXSL : Unbounded_String;
      ORDERVIEWXSL : Unbounded_String;
      INVENTORYXSL : Unbounded_String;
      BASKETXSL : Unbounded_String;
      CHECKOUTBASKETXSL : Unbounded_String;
      MINIBASKETXSL : Unbounded_String;
      BILLINGADDRESSCHANGEFORMXSL : Unbounded_String;
      BILLINGADDRESSINPUTFORMXSL : Unbounded_String;
      BILLINGADDRESSVIEWXSL : Unbounded_String;
      SHIPPINGADDRESSCHANGEFORMXSL : Unbounded_String;
      SHIPPINGADDRESSINPUTFORMXSL : Unbounded_String;
      SHIPPINGADDRESSVIEWXSL : Unbounded_String;
      NEWTAXADDRESSXSL : Unbounded_String;
      EDITTAXADDRESSXSL : Unbounded_String;
      SHIPPINGMETHODSXSL : Unbounded_String;
      ORDERCUSTOMEREMAILVIEWXSL : Unbounded_String;
      ORDERMANAGEREMAILVIEWXSL : Unbounded_String;
      EDITCUSTOMERXSL : Unbounded_String;
      ORDERHISTORYXSL : Unbounded_String;
      PAYMENTVIEWXSL : Unbounded_String;
      SUMMARYXSL : Unbounded_String;
      PAYMENTGATEWAYOPTIONSXSL : Unbounded_String;
      MAKEPAYMENTVIEWXSL : Unbounded_String;
   end record;
   instance : BasicViewData_Access;

   procedure Initialize (This : in out BasicViewData'Class);
   function Create return BasicViewData_Access;
   function getInstance return BasicViewData_Access;
   procedure getInstance;

end org.allbinary.logic.visual.transform.info.BasicViewData_Package;


