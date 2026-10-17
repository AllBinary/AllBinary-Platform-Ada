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
with org.allbinary.business.user.UserDomNode_Package; use org.allbinary.business.user.UserDomNode_Package;
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with views.business.context.HttpContextView_Package; use views.business.context.HttpContextView_Package;

package views.admin.user.UserView_Package is

   package UserDomNode_Package renames org.allbinary.business.user.UserDomNode_Package;
   package UserInterface_Package renames org.allbinary.business.user.UserInterface_Package;
   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package HttpContextView_Package renames views.business.context.HttpContextView_Package;

   type UserView is tagged;
   type UserView_Access is access all UserView'Class;
   type UserView_Access_Array is array (Natural range <>) of UserView_Access;
   type UserView_Access_Array_Access is access all UserView_Access_Array;

   type UserView is new HttpContextView with record
      logUtil : LogUtil_Access;
      user : UserInterface_Access;
   end record;

   procedure Initialize (This : in out UserView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return UserView_Access;
   procedure addDomNodeInterfaces (This : in out UserView);
   function view (This : in out UserView) return Unbounded_String;
   procedure view (This : in out UserView);

end views.admin.user.UserView_Package;


