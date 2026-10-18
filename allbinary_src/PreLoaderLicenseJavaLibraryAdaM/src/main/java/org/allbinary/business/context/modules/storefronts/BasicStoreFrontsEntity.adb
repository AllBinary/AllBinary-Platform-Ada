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
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.business.context.modules.storefronts.BasicStoreFront_Package; use org.allbinary.business.context.modules.storefronts.BasicStoreFront_Package;

package body org.allbinary.business.context.modules.storefronts.BasicStoreFrontsEntity_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package UserDbInitInfo_Package renames Standard.org.allbinary.business.init.db.UserDbInitInfo_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   procedure Initialize_Fields (This : in out BasicStoreFrontsEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tableName := To_Unbounded_String ("storefronts");
   end Initialize_Fields;


   procedure Initialize (This : in out BasicStoreFrontsEntity'Class) is
   begin
        InitSql_Package.Initialize (This, UserDbInitInfo_Package.Create);
        Initialize_Fields (This);
        BasicStoreFrontsEntity'Class (This).setTable (This.tableName);
   end Initialize;

   function Create return BasicStoreFrontsEntity_Access is
      This : constant BasicStoreFrontsEntity_Access := new BasicStoreFrontsEntity;
   begin
      BasicStoreFrontsEntity_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getStoreFrontInterface (This : in out BasicStoreFrontsEntity; name : Unbounded_String) return BasicStoreFrontInterface_Access is
      keysAndValues : HashMap_Access;
      storeHashMap : HashMap_Access;
   begin
        keysAndValues := StdUtil_Package.getInstance.createHashMap;
        keysAndValues.put (StoreFrontData_Package.getInstance.NAME, Java_Box (name));
        storeHashMap := InitSql (This).getRow (keysAndValues);
        if (storeHashMap) = (null) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such Store: ") & name));
        end if;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.FACTORYERROR) then
            This.logUtil.putF (To_Unbounded_String ("StoreFront: ") & storeHashMap.toString, BasicStoreFrontsEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("getStore()"));
        end if;
        return BasicStoreFrontInterface_Access (BasicStoreFront_Package.Create (storeHashMap));
   end getStoreFrontInterface;

   procedure getStoreFrontInterface (This : in out BasicStoreFrontsEntity; name : Unbounded_String) is
      Java_Result : constant BasicStoreFrontInterface_Access := BasicStoreFrontsEntity'Class (This).getStoreFrontInterface (name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStoreFrontInterface;

end org.allbinary.business.context.modules.storefronts.BasicStoreFrontsEntity_Package;


