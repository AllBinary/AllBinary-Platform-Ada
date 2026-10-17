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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with org.allbinary.business.user.modules.User_Package; use org.allbinary.business.user.modules.User_Package;
with org.allbinary.business.user.role.UserRoleData_Package; use org.allbinary.business.user.role.UserRoleData_Package;
with org.allbinary.logic.communication.http.request.RequestParams_Package; use org.allbinary.logic.communication.http.request.RequestParams_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.CreateUserFactory_Package; use org.allbinary.business.user.CreateUserFactory_Package;

package org.allbinary.business.user.NewUserFactory_Package is

   package User_Package renames Standard.org.allbinary.business.user.modules.User_Package;
   package UserRoleData_Package renames Standard.org.allbinary.business.user.role.UserRoleData_Package;
   package RequestParams_Package renames Standard.org.allbinary.logic.communication.http.request.RequestParams_Package;
   package TransformInfoHttpInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

   type NewUserFactory is tagged;
   type NewUserFactory_Access is access all NewUserFactory'Class;
   type NewUserFactory_Access_Array is array (Natural range <>) of NewUserFactory_Access;
   type NewUserFactory_Access_Array_Access is access all NewUserFactory_Access_Array;

   type NewUserFactory is new Java_Object with null record;

   procedure Initialize (This : in out NewUserFactory'Class);
   function Create return NewUserFactory_Access;
   function getInstance return UserInterface_Access;
   function getInstance (transformInfoInterface_Param : access TransformInfoInterface'Class) return UserInterface_Access;
   procedure getInstance (transformInfoInterface_Param : access TransformInfoInterface'Class);
   function getInstance (httpServletRequest_Param : access HttpServletRequest'Class; propertiesHashMap_Param : access HashMap'Class) return UserInterface_Access;
   procedure getInstance (httpServletRequest_Param : access HttpServletRequest'Class; propertiesHashMap_Param : access HashMap'Class);

end org.allbinary.business.user.NewUserFactory_Package;


