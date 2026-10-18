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


with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.game.ag.ai.LastKeyAIVisitor_Package is

   package BasicAI_Package renames Standard.org.allbinary.game.ai.BasicAI_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out LastKeyAIVisitor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.TRUE := BooleanFactory_Package.getInstance.TRUE;
   end Initialize_Fields;


   procedure Initialize (This : in out LastKeyAIVisitor'Class) is
   begin
      Visitor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return LastKeyAIVisitor_Access is
      This : constant LastKeyAIVisitor_Access := new LastKeyAIVisitor;
   begin
      LastKeyAIVisitor_Package.Initialize (This.all);
      return This;
   end Create;

   function visit (This : in out LastKeyAIVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      basicAI : BasicAI_Access;
      key : Integer;
      commonStrings : CommonStrings_Access;
   begin
        begin
            basicAI := BasicAI_Access (anyType);
            key := basicAI.getLastKey;
            if (key) /= (-(1)) then
                basicAI.processKeyAI (key);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, LastKeyAIVisitor_Access'(This'Unchecked_Access), commonStrings.VISIT, e);
                end;
        end;
        return This.TRUE;
   end visit;

   procedure visit (This : in out LastKeyAIVisitor; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := LastKeyAIVisitor'Class (This).visit (anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   function visit (This : in out LastKeyAIVisitor; Value : Unbounded_String) return Java_Object_Access is
   begin
      return LastKeyAIVisitor'Class (This).visit (Java_Box (Value));
   end visit;

   procedure visit (This : in out LastKeyAIVisitor; Value : Unbounded_String) is
      Java_Result : constant Java_Object_Access := LastKeyAIVisitor'Class (This).visit (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.game.ag.ai.LastKeyAIVisitor_Package;


