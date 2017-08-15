.class Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->processSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x1

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    # getter for: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$4600(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I

    move-result v1

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    # getter for: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$4600(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I

    move-result v0

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    # getter for: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$4600(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I

    move-result v0

    if-ne v0, v7, :cond_4

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    # getter for: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$4600(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I

    move-result v1

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    iget-object v1, v1, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    # getter for: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$4600(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I

    move-result v2

    aget-object v1, v1, v2

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->val$query:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->queryServerSearch(Ljava/lang/String;IJ)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    # getter for: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$4600(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I

    move-result v0

    if-eq v0, v6, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    # getter for: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$4600(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I

    move-result v0

    if-ne v0, v7, :cond_3

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    iget-object v1, v1, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    # getter for: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$4600(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I

    move-result v2

    aget-object v1, v1, v2

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3$1;-><init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    # getter for: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$4600(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->val$query:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    iget-object v3, v3, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->queryServerSearch(Ljava/lang/String;IJ)V

    goto :goto_0
.end method
