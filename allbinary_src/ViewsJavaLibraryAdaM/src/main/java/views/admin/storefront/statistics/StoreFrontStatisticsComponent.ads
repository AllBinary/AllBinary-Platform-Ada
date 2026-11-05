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

limited with views.admin.storefront.statistics.StoreFrontStatisticsComponent_Package;
package views.admin.storefront.statistics.StoreFrontStatisticsComponent_Package_References is
   type StoreFrontStatisticsComponent_Access is access all views.admin.storefront.statistics.StoreFrontStatisticsComponent_Package.StoreFrontStatisticsComponent'Class;
   type StoreFrontStatisticsComponent_Access_Array is array (Natural range <>) of StoreFrontStatisticsComponent_Access;
   type StoreFrontStatisticsComponent_Access_Array_Access is access all StoreFrontStatisticsComponent_Access_Array;
   type StoreFrontStatisticsComponent_Access_Array_Access_Array is array (Natural range <>) of StoreFrontStatisticsComponent_Access_Array_Access;
   type StoreFrontStatisticsComponent_Access_Array_Access_Array_Access is access all StoreFrontStatisticsComponent_Access_Array_Access_Array;
end views.admin.storefront.statistics.StoreFrontStatisticsComponent_Package_References;

with views.admin.storefront.statistics.StoreFrontStatisticsComponent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References;
limited with org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.admin.storefront.statistics.StoreFrontStatisticsComponent_Package is

   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;
   package Reference_Types is
   subtype StoreFrontInterface_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access;
   use type StoreFrontInterface_Access;
   subtype StoreFrontInterface_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array;
   use type StoreFrontInterface_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access;
   subtype StoreFrontInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array;
   use type StoreFrontInterface_Access_Array_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access_Array_Access;
   subtype DomNodeInterface_Access is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access;
   use type DomNodeInterface_Access;
   subtype DomNodeInterface_Access_Array is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access_Array;
   use type DomNodeInterface_Access_Array;
   subtype DomNodeInterface_Access_Array_Access is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access_Array_Access;
   use type DomNodeInterface_Access_Array_Access;
   subtype DomNodeInterface_Access_Array_Access_Array is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access_Array_Access_Array;
   use type DomNodeInterface_Access_Array_Access_Array;
   subtype DomNodeInterface_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access_Array_Access_Array_Access;
   use type DomNodeInterface_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   use type TransformInfoInterface_Access;
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   use type TransformInfoInterface_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access;
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   use type TransformInfoInterface_Access_Array_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype StoreFrontStatisticsComponent_Access is views.admin.storefront.statistics.StoreFrontStatisticsComponent_Package_References.StoreFrontStatisticsComponent_Access;
   function "=" (Left, Right : StoreFrontStatisticsComponent_Access) return Boolean renames views.admin.storefront.statistics.StoreFrontStatisticsComponent_Package_References."=";
   subtype StoreFrontStatisticsComponent_Access_Array is views.admin.storefront.statistics.StoreFrontStatisticsComponent_Package_References.StoreFrontStatisticsComponent_Access_Array;
   function "=" (Left, Right : StoreFrontStatisticsComponent_Access_Array) return Boolean renames views.admin.storefront.statistics.StoreFrontStatisticsComponent_Package_References."=";
   subtype StoreFrontStatisticsComponent_Access_Array_Access is views.admin.storefront.statistics.StoreFrontStatisticsComponent_Package_References.StoreFrontStatisticsComponent_Access_Array_Access;
   function "=" (Left, Right : StoreFrontStatisticsComponent_Access_Array_Access) return Boolean renames views.admin.storefront.statistics.StoreFrontStatisticsComponent_Package_References."=";
   subtype StoreFrontStatisticsComponent_Access_Array_Access_Array is views.admin.storefront.statistics.StoreFrontStatisticsComponent_Package_References.StoreFrontStatisticsComponent_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontStatisticsComponent_Access_Array_Access_Array) return Boolean renames views.admin.storefront.statistics.StoreFrontStatisticsComponent_Package_References."=";
   subtype StoreFrontStatisticsComponent_Access_Array_Access_Array_Access is views.admin.storefront.statistics.StoreFrontStatisticsComponent_Package_References.StoreFrontStatisticsComponent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontStatisticsComponent_Access_Array_Access_Array_Access) return Boolean renames views.admin.storefront.statistics.StoreFrontStatisticsComponent_Package_References."=";

   type StoreFrontStatisticsComponent is new HttpStoreComponentView with record
      StoreFrontStatisticsComponent_Field_logUtil : LogUtil_Access;
      newStoreFrontInterface : StoreFrontInterface_Access;
      domNodeInterface : DomNodeInterface_Access;
   end record;

   procedure Initialize (This : in out StoreFrontStatisticsComponent'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return StoreFrontStatisticsComponent_Access;
   procedure addDomNodeInterfaces (This : in out StoreFrontStatisticsComponent);
   function view (This : in out StoreFrontStatisticsComponent) return Unbounded_String;

end views.admin.storefront.statistics.StoreFrontStatisticsComponent_Package;


