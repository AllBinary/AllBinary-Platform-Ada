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


package body org.allbinary.game.ag.ai.LastKeyAIVisitor_Package is

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
      Initialize (This.all);
      return This;
   end Create;

   function visit (This : in out LastKeyAIVisitor; anyType : Java_Object_Access) return Java_Object_Access is
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
            when e : others =>
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.VISIT, e);
        end;
        return This.TRUE;
   end visit;

   procedure visit (This : in out LastKeyAIVisitor; anyType : Java_Object_Access) is
      Java_Result : constant Java_Object_Access := LastKeyAIVisitor'Class (This).visit (anyType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.game.ag.ai.LastKeyAIVisitor_Package;


