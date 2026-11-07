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


with org.allbinary.game.ag.ai.LastKeyAIVisitor_Package; use org.allbinary.game.ag.ai.LastKeyAIVisitor_Package;
with org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.ag.ai.LastKeyAIVisitor_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package is

   subtype LastKeyAIVisitor_Access is org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References.LastKeyAIVisitor_Access;
   function "=" (Left, Right : LastKeyAIVisitor_Access) return Boolean renames org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References."=";
   subtype LastKeyAIVisitor_Access_Array is org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References.LastKeyAIVisitor_Access_Array;
   function "=" (Left, Right : LastKeyAIVisitor_Access_Array) return Boolean renames org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References."=";
   subtype LastKeyAIVisitor_Access_Array_Access is org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References.LastKeyAIVisitor_Access_Array_Access;
   function "=" (Left, Right : LastKeyAIVisitor_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References."=";
   subtype LastKeyAIVisitor_Access_Array_Access_Array is org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References.LastKeyAIVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : LastKeyAIVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References."=";
   subtype LastKeyAIVisitor_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References.LastKeyAIVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LastKeyAIVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References."=";
   procedure Initialize_Fields (This : in out LastKeyAIVisitorFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LastKeyAIVisitorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LastKeyAIVisitorFactory_Access is
      This : constant LastKeyAIVisitorFactory_Access := new LastKeyAIVisitorFactory;
   begin
      LastKeyAIVisitorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return LastKeyAIVisitor_Access is
   begin
        return LastKeyAIVisitor_Access (LastKeyAIVisitorFactory_Package.instance);
   end getInstance;

begin
   null;
   instance := LastKeyAIVisitor_Package.Create;

end org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package;


