.class Lorg/telegram/ui/ArchivedStickersActivity$4$1;
.super Ljava/lang/Object;
.source "ArchivedStickersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArchivedStickersActivity$4;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArchivedStickersActivity$4;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArchivedStickersActivity$4;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;->this$1:Lorg/telegram/ui/ArchivedStickersActivity$4;

    iput-object p2, p0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;

    iget-object v3, p0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;->this$1:Lorg/telegram/ui/ArchivedStickersActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/ArchivedStickersActivity$4;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    # getter for: Lorg/telegram/ui/ArchivedStickersActivity;->sets:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/ArchivedStickersActivity;->access$200(Lorg/telegram/ui/ArchivedStickersActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;->this$1:Lorg/telegram/ui/ArchivedStickersActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/ArchivedStickersActivity$4;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v4, 0xf

    if-eq v0, v4, :cond_2

    move v0, v1

    :goto_0
    # setter for: Lorg/telegram/ui/ArchivedStickersActivity;->endReached:Z
    invoke-static {v3, v0}, Lorg/telegram/ui/ArchivedStickersActivity;->access$402(Lorg/telegram/ui/ArchivedStickersActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;->this$1:Lorg/telegram/ui/ArchivedStickersActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/ArchivedStickersActivity$4;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    # setter for: Lorg/telegram/ui/ArchivedStickersActivity;->loadingStickers:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/ArchivedStickersActivity;->access$302(Lorg/telegram/ui/ArchivedStickersActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;->this$1:Lorg/telegram/ui/ArchivedStickersActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/ArchivedStickersActivity$4;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    # setter for: Lorg/telegram/ui/ArchivedStickersActivity;->firstLoaded:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/ArchivedStickersActivity;->access$802(Lorg/telegram/ui/ArchivedStickersActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;->this$1:Lorg/telegram/ui/ArchivedStickersActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/ArchivedStickersActivity$4;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    # getter for: Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/ArchivedStickersActivity;->access$900(Lorg/telegram/ui/ArchivedStickersActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;->this$1:Lorg/telegram/ui/ArchivedStickersActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/ArchivedStickersActivity$4;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    # getter for: Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/ArchivedStickersActivity;->access$900(Lorg/telegram/ui/ArchivedStickersActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity$4$1;->this$1:Lorg/telegram/ui/ArchivedStickersActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/ArchivedStickersActivity$4;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    # invokes: Lorg/telegram/ui/ArchivedStickersActivity;->updateRows()V
    invoke-static {v0}, Lorg/telegram/ui/ArchivedStickersActivity;->access$1000(Lorg/telegram/ui/ArchivedStickersActivity;)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method
