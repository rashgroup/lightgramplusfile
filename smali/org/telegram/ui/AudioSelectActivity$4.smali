.class Lorg/telegram/ui/AudioSelectActivity$4;
.super Ljava/lang/Object;
.source "AudioSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/AudioSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/AudioSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/AudioSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/AudioSelectActivity$4;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity$4;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->delegate:Lorg/telegram/ui/AudioSelectActivity$AudioSelectActivityDelegate;
    invoke-static {v0}, Lorg/telegram/ui/AudioSelectActivity;->access$200(Lorg/telegram/ui/AudioSelectActivity;)Lorg/telegram/ui/AudioSelectActivity$AudioSelectActivityDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity$4;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->selectedAudios:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/AudioSelectActivity;->access$000(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$AudioEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity$4;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->delegate:Lorg/telegram/ui/AudioSelectActivity$AudioSelectActivityDelegate;
    invoke-static {v0}, Lorg/telegram/ui/AudioSelectActivity;->access$200(Lorg/telegram/ui/AudioSelectActivity;)Lorg/telegram/ui/AudioSelectActivity$AudioSelectActivityDelegate;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/telegram/ui/AudioSelectActivity$AudioSelectActivityDelegate;->didSelectAudio(Ljava/util/ArrayList;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity$4;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/AudioSelectActivity;->finishFragment()V

    return-void
.end method
