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

limited with org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package;
package org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package_References is
   type TransformHttpRequestDocumentFactory_Access is access all org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package.TransformHttpRequestDocumentFactory'Class;
   type TransformHttpRequestDocumentFactory_Access_Array is array (Natural range <>) of TransformHttpRequestDocumentFactory_Access;
   type TransformHttpRequestDocumentFactory_Access_Array_Access is access all TransformHttpRequestDocumentFactory_Access_Array;
   type TransformHttpRequestDocumentFactory_Access_Array_Access_Array is array (Natural range <>) of TransformHttpRequestDocumentFactory_Access_Array_Access;
   type TransformHttpRequestDocumentFactory_Access_Array_Access_Array_Access is access all TransformHttpRequestDocumentFactory_Access_Array_Access_Array;
end org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package_References;

with org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
limited with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References;
limited with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References;

package org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package is

   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package Reference_Types is
   subtype WeblisketSession_Access is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access;
   use type WeblisketSession_Access;
   subtype WeblisketSession_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array;
   use type WeblisketSession_Access_Array;
   subtype WeblisketSession_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array_Access;
   use type WeblisketSession_Access_Array_Access;
   subtype WeblisketSession_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array_Access_Array;
   use type WeblisketSession_Access_Array_Access_Array;
   subtype WeblisketSession_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array_Access_Array_Access;
   use type WeblisketSession_Access_Array_Access_Array_Access;
   subtype TransformDocumentInterface_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access;
   use type TransformDocumentInterface_Access;
   subtype TransformDocumentInterface_Access_Array is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array;
   use type TransformDocumentInterface_Access_Array;
   subtype TransformDocumentInterface_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access;
   use type TransformDocumentInterface_Access_Array_Access;
   subtype TransformDocumentInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access_Array;
   use type TransformDocumentInterface_Access_Array_Access_Array;
   subtype TransformDocumentInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access_Array_Access;
   use type TransformDocumentInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TransformHttpRequestDocumentFactory_Access is org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package_References.TransformHttpRequestDocumentFactory_Access;
   function "=" (Left, Right : TransformHttpRequestDocumentFactory_Access) return Boolean renames org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package_References."=";
   subtype TransformHttpRequestDocumentFactory_Access_Array is org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package_References.TransformHttpRequestDocumentFactory_Access_Array;
   function "=" (Left, Right : TransformHttpRequestDocumentFactory_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package_References."=";
   subtype TransformHttpRequestDocumentFactory_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package_References.TransformHttpRequestDocumentFactory_Access_Array_Access;
   function "=" (Left, Right : TransformHttpRequestDocumentFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package_References."=";
   subtype TransformHttpRequestDocumentFactory_Access_Array_Access_Array is org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package_References.TransformHttpRequestDocumentFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TransformHttpRequestDocumentFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package_References."=";
   subtype TransformHttpRequestDocumentFactory_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package_References.TransformHttpRequestDocumentFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformHttpRequestDocumentFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package_References."=";

   type TransformHttpRequestDocumentFactory is new Java_Object with null record;

   procedure Initialize (This : in out TransformHttpRequestDocumentFactory'Class);
   function Create return TransformHttpRequestDocumentFactory_Access;
   function getInstance (pageContext_Param : access PageContext_Package.PageContext'Class; weblisketSession_Param : access WeblisketSession_Package.WeblisketSession'Class) return TransformDocumentInterface_Access;
   procedure getInstance (pageContext_Param : access PageContext_Package.PageContext'Class; weblisketSession_Param : access WeblisketSession_Package.WeblisketSession'Class);

end org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package;


