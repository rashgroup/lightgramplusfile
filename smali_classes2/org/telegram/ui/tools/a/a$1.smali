.class final Lorg/telegram/ui/tools/a/a$1;
.super Ljava/lang/Object;
.source "AnsweringMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/a/a;->a(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/a/a$1;->a:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/a/a$1;->a:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0}, Lorg/telegram/ui/tools/a/a;->a(Lorg/telegram/messenger/MessageObject;)Z

    return-void
.end method
