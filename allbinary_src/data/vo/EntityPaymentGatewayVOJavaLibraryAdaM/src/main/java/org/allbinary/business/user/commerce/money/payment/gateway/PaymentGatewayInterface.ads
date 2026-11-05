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

limited with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;
package org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References is
   type PaymentGatewayInterface_Access is access all org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package.PaymentGatewayInterface'Class;
   type PaymentGatewayInterface_Access_Array is array (Natural range <>) of PaymentGatewayInterface_Access;
   type PaymentGatewayInterface_Access_Array_Access is access all PaymentGatewayInterface_Access_Array;
   type PaymentGatewayInterface_Access_Array_Access_Array is array (Natural range <>) of PaymentGatewayInterface_Access_Array_Access;
   type PaymentGatewayInterface_Access_Array_Access_Array_Access is access all PaymentGatewayInterface_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References;

with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;

package org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type PaymentGatewayInterface is interface and TableMappingInterface;
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
   function Java_Object_Access_From_PaymentGatewayInterface (Value : PaymentGatewayInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getEnable (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getStoreName (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getName (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getPaymentMethod (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getMode (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getTestProtocol (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getTestServer (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getTestPort (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getTestPath (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getServerProtocol (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getServer (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getServerPort (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getServerPath (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getUserName (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getPassword (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getProxyProtocol (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getProxyServer (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getProxyPath (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getProxyPort (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getProxyUserName (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getProxyPassword (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getTimeout (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getProxyTimeout (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getSpecial1 (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getSpecial2 (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getSpecial3 (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getSpecial4 (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getSpecial5 (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getSpecial6 (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getSpecial7 (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getSpecial8 (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getSpecial9 (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getLastModified (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   function getTimeEntered (This : in out PaymentGatewayInterface) return Unbounded_String is abstract;
   procedure setEnable (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setStoreName (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setName (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setPaymentMethod (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setMode (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setTestProtocol (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setTestServer (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setTestPort (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setTestPath (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setServerProtocol (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setServer (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setServerPort (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setServerPath (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setUserName (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setPassword (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setProxyProtocol (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setProxyServer (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setProxyPath (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setProxyPort (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setProxyUserName (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setProxyPassword (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setTimeout (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setProxyTimeout (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setSpecial1 (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setSpecial2 (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setSpecial3 (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setSpecial4 (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setSpecial5 (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setSpecial6 (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setSpecial7 (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setSpecial8 (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setSpecial9 (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setLastModified (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   procedure setTimeEntered (This : in out PaymentGatewayInterface; value : Unbounded_String) is abstract;
   function toHashMap (This : in out PaymentGatewayInterface; isEncrypted : Boolean) return HashMap_Access is abstract;
   procedure toHashMap (This : in out PaymentGatewayInterface; isEncrypted : Boolean) is abstract;
   function toVector (This : in out PaymentGatewayInterface; isEncrypted : Boolean) return BasicArrayList_Access is abstract;
   procedure toVector (This : in out PaymentGatewayInterface; isEncrypted : Boolean) is abstract;

end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;


