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
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
with views.admin.payment.PaymentProcessorComponent_Package; use views.admin.payment.PaymentProcessorComponent_Package;
with admin.taghelpers.TagHelper_Package; use admin.taghelpers.TagHelper_Package;

package admin.taghelpers.PaymentProcessHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package TransformInfoHttpFactory_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package;
   package TransformInfoHttpInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
   package PaymentProcessorComponent_Package renames Standard.views.admin.payment.PaymentProcessorComponent_Package;

   type PaymentProcessHelper is tagged;
   type PaymentProcessHelper_Access is access all PaymentProcessHelper'Class;
   type PaymentProcessHelper_Access_Array is array (Natural range <>) of PaymentProcessHelper_Access;
   type PaymentProcessHelper_Access_Array_Access is access all PaymentProcessHelper_Access_Array;

   type PaymentProcessHelper is new TagHelper with record
      paymentProcessorComponent : PaymentProcessorComponent_Access;
   end record;

   procedure Initialize (This : in out PaymentProcessHelper'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return PaymentProcessHelper_Access;
   function process (This : in out PaymentProcessHelper) return Unbounded_String;

end admin.taghelpers.PaymentProcessHelper_Package;


