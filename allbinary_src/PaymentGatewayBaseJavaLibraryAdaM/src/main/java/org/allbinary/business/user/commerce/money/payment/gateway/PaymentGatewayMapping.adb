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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;

package body org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package is

   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype PaymentGatewayInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access;
   function "=" (Left, Right : PaymentGatewayInterface_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References."=";
   subtype PaymentGatewayInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access_Array;
   function "=" (Left, Right : PaymentGatewayInterface_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References."=";
   subtype PaymentGatewayInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References."=";
   subtype PaymentGatewayInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentGatewayInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References."=";
   subtype PaymentGatewayInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References."=";
   procedure Initialize_Fields (This : in out PaymentGatewayMapping'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentGatewayMapping'Class; paymentGatewayInterface_Param : access PaymentGatewayInterface_Package.PaymentGatewayInterface'Class) is
      paymentGatewayInterface : constant PaymentGatewayInterface_Access := PaymentGatewayInterface_Access (paymentGatewayInterface_Param);
   begin
      Initialize_Fields (This);
        This.paymentGatewayInterface := paymentGatewayInterface;
   end Initialize;

   function Create (paymentGatewayInterface_Param : access PaymentGatewayInterface_Package.PaymentGatewayInterface'Class) return PaymentGatewayMapping_Access is
      This : constant PaymentGatewayMapping_Access := new PaymentGatewayMapping;
   begin
      PaymentGatewayMapping_Package.Initialize (This.all, paymentGatewayInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function toHashMap (This : in out PaymentGatewayMapping) return HashMap_Access is
   begin
        return This.paymentGatewayInterface.toHashMap (False);
   end toHashMap;

   function toVector (This : in out PaymentGatewayMapping) return BasicArrayList_Access is
   begin
        return This.paymentGatewayInterface.toVector (False);
   end toVector;

   --  throws Exception
   function getKey (This : in out PaymentGatewayMapping) return Java_Object_Access is
   begin
        return Java_Object_Access (This.paymentGatewayInterface.getKey);
   end getKey;

end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package;


