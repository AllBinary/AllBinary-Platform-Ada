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


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.game.ag.ai.ThrustAIVisitor_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package BasicAI_Package renames Standard.org.allbinary.game.ai.BasicAI_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out ThrustAIVisitor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.TRUE := BooleanFactory_Package.getInstance.TRUE;
   end Initialize_Fields;


   procedure Initialize (This : in out ThrustAIVisitor'Class) is
   begin
      Visitor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ThrustAIVisitor_Access is
      This : constant ThrustAIVisitor_Access := new ThrustAIVisitor;
   begin
      ThrustAIVisitor_Package.Initialize (This.all);
      return This;
   end Create;

   function visit (This : in out ThrustAIVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      basicAI : BasicAI_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            basicAI := BasicAI_Access (anyType);
            basicAI.processKeyAI (Canvas_Package.UP);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, ThrustAIVisitor_Access'(This'Unchecked_Access), commonStrings.VISIT, e);
                end;
        end;
        return This.TRUE;
   end visit;

   procedure visit (This : in out ThrustAIVisitor; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := ThrustAIVisitor'Class (This).visit (anyType_Param => anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   function visit (This : in out ThrustAIVisitor; Value : Unbounded_String) return Java_Object_Access is
   begin
      return ThrustAIVisitor'Class (This).visit (Java_Box (Value));
   end visit;

   procedure visit (This : in out ThrustAIVisitor; Value : Unbounded_String) is
      Java_Result : constant Java_Object_Access := ThrustAIVisitor'Class (This).visit (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.game.ag.ai.ThrustAIVisitor_Package;


