.class Lorg/telegram/messenger/MessagesController$80$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$80;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$80;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$80;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$80$1;->this$1:Lorg/telegram/messenger/MessagesController$80;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$80$1;->this$1:Lorg/telegram/messenger/MessagesController$80;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$80;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$80$1;->this$1:Lorg/telegram/messenger/MessagesController$80;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$80;->val$chat_id:I

    neg-int v1, v1

    int-to-long v2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    return-void
.end method
