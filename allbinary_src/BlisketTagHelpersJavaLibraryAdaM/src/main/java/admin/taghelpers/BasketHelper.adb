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


package body admin.taghelpers.BasketHelper_Package is

   procedure Initialize_Fields (This : in out BasketHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.storeFrontInterface := null;
      
      
      This.MAX := 200;
   end Initialize_Fields;


   procedure Initialize (This : in out BasketHelper'Class; hashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) is
      hashMap : HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : PageContext_Access := PageContext_Access (pageContext_Param);
      storeName : Unbounded_String;
   begin
      TagHelper_Package.Initialize (This);
      Initialize_Fields (This);
        This.propertiesHashMap := hashMap;
        This.pageContext := pageContext;
        storeName := Unbounded_String (This.propertiesHashMap.get (StoreFrontData_Package.getInstance.NAME));
        if (storeName) /= (Null_Unbounded_String) then
            This.storeFrontInterface := StoreFrontFactory_Package.getInstance (storeName);
        end if;
        This.weblisketSession := WeblisketSession_Package.Create (hashMap, pageContext);
   end Initialize;

   function Create (hashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) return BasketHelper_Access is
      This : constant BasketHelper_Access := new BasketHelper;
   begin
      BasketHelper_Package.Initialize (This.all, hashMap_Param, pageContext_Param);
      return This;
   end Create;

   function isBasketEmpty (This : in out BasketHelper) return Boolean is
      basket : BasketInterface_Access;
   begin
        begin
            basket := This.weblisketSession.getOrder.getBasket;
            if (basket.getNumberOfItems.intValue) <= (0) then
                return True;
            else
                return False;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, BasketHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("isBasketEmpty()"), e);
            end if;
            return True;
                end;
        end;
   end isBasketEmpty;

end admin.taghelpers.BasketHelper_Package;


