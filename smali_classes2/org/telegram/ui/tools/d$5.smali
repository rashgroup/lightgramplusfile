.class Lorg/telegram/ui/tools/d$5;
.super Ljava/lang/Object;
.source "ChatAc.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/d;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/d;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/d;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/d$5;->a:Lorg/telegram/ui/tools/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/tools/d$5;->a:Lorg/telegram/ui/tools/d;

    iget-object v0, v0, Lorg/telegram/ui/tools/d;->a:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/tools/d$5;->a:Lorg/telegram/ui/tools/d;

    invoke-static {v1}, Lorg/telegram/ui/tools/d;->a(Lorg/telegram/ui/tools/d;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/tools/d$5;->a:Lorg/telegram/ui/tools/d;

    invoke-static {v1}, Lorg/telegram/ui/tools/d;->b(Lorg/telegram/ui/tools/d;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/tools/d$5;->a:Lorg/telegram/ui/tools/d;

    iget-object v0, v0, Lorg/telegram/ui/tools/d;->a:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    iget-object v0, p0, Lorg/telegram/ui/tools/d$5;->a:Lorg/telegram/ui/tools/d;

    invoke-static {v0}, Lorg/telegram/ui/tools/d;->c(Lorg/telegram/ui/tools/d;)V

    return-void

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/tools/d$5;->a:Lorg/telegram/ui/tools/d;

    invoke-static {v1}, Lorg/telegram/ui/tools/d;->b(Lorg/telegram/ui/tools/d;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lorg/telegram/ui/tools/d$5;->a:Lorg/telegram/ui/tools/d;

    invoke-static {v1}, Lorg/telegram/ui/tools/d;->b(Lorg/telegram/ui/tools/d;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/tools/d$5;->a:Lorg/telegram/ui/tools/d;

    invoke-static {v1}, Lorg/telegram/ui/tools/d;->b(Lorg/telegram/ui/tools/d;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_0
.end method
