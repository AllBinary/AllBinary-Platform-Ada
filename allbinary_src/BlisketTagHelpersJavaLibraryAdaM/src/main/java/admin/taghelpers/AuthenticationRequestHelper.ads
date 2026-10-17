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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.password.Password_Package; use org.allbinary.business.user.password.Password_Package;
with org.allbinary.business.user.role.BasicUserRole_Package; use org.allbinary.business.user.role.BasicUserRole_Package;
with org.allbinary.data.tables.user.UserEntityFactory_Package; use org.allbinary.data.tables.user.UserEntityFactory_Package;
with org.allbinary.data.tables.user.UserEntityInterface_Package; use org.allbinary.data.tables.user.UserEntityInterface_Package;
with org.allbinary.globals.GLOBALS2_Package; use org.allbinary.globals.GLOBALS2_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.smtp.email.NewPasswordEmail_Package; use org.allbinary.logic.communication.smtp.email.NewPasswordEmail_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package; use org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
with admin.taghelpers.TagHelper_Package; use admin.taghelpers.TagHelper_Package;

package admin.taghelpers.AuthenticationRequestHelper_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;
   package Password_Package renames Standard.org.allbinary.business.user.password.Password_Package;
   package BasicUserRole_Package renames Standard.org.allbinary.business.user.role.BasicUserRole_Package;
   package UserEntityFactory_Package renames Standard.org.allbinary.data.tables.user.UserEntityFactory_Package;
   package UserEntityInterface_Package renames Standard.org.allbinary.data.tables.user.UserEntityInterface_Package;
   package GLOBALS2_Package renames Standard.org.allbinary.globals.GLOBALS2_Package;
   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package WeblisketSessionData_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package;
   package WeblisketSessionInterface_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package NewPasswordEmail_Package renames Standard.org.allbinary.logic.communication.smtp.email.NewPasswordEmail_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package ServiceClientInformationInterfaceFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;

   type AuthenticationRequestHelper is tagged;
   type AuthenticationRequestHelper_Access is access all AuthenticationRequestHelper'Class;
   type AuthenticationRequestHelper_Access_Array is array (Natural range <>) of AuthenticationRequestHelper_Access;
   type AuthenticationRequestHelper_Access_Array_Access is access all AuthenticationRequestHelper_Access_Array;

   type AuthenticationRequestHelper is new TagHelper with record
      logUtil : LogUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      weblisketSession : WeblisketSession_Access;
      request : HttpServletRequest_Access;
   end record;

   procedure Initialize (This : in out AuthenticationRequestHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access);
   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return AuthenticationRequestHelper_Access;
   function generateNewPassword (This : in out AuthenticationRequestHelper) return Unbounded_String;
   function newPassword (This : in out AuthenticationRequestHelper) return Boolean;
   function changePassword (This : in out AuthenticationRequestHelper) return Boolean;
   function isRoleValid (This : in out AuthenticationRequestHelper; userName : Unbounded_String; password : Unbounded_String; roles : BasicArrayList_Access) return Boolean;
   procedure isRoleValid (This : in out AuthenticationRequestHelper; userName : Unbounded_String; password : Unbounded_String; roles : BasicArrayList_Access);

end admin.taghelpers.AuthenticationRequestHelper_Package;


