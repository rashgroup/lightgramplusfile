.class Lorg/telegram/ui/DocumentSelectActivity$6;
.super Ljava/lang/Object;
.source "DocumentSelectActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DocumentSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DocumentSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DocumentSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$1000(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->getItem(I)Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    if-nez v0, :cond_5

    iget v0, v1, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    const v1, 0x7f020181

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->delegate:Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$700(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->delegate:Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$700(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;->startDocumentSelectActivity()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/DocumentSelectActivity;->finishFragment(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$1600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$1600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$1700(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->dir:Ljava/io/File;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    iget-object v2, v0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->dir:Ljava/io/File;

    # invokes: Lorg/telegram/ui/DocumentSelectActivity;->listFiles(Ljava/io/File;)Z
    invoke-static {v1, v2}, Lorg/telegram/ui/DocumentSelectActivity;->access$200(Lorg/telegram/ui/DocumentSelectActivity;Ljava/io/File;)Z

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$1800(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v1

    iget v2, v0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->scrollItem:I

    iget v0, v0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->scrollOffset:I

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # invokes: Lorg/telegram/ui/DocumentSelectActivity;->listRoots()V
    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$100(Lorg/telegram/ui/DocumentSelectActivity;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;

    iget-object v3, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V

    iget-object v3, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v3}, Lorg/telegram/ui/DocumentSelectActivity;->access$1800(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    iput v3, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->scrollItem:I

    iget-object v3, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v3}, Lorg/telegram/ui/DocumentSelectActivity;->access$1800(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v3

    iget v4, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->scrollItem:I

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->scrollOffset:I

    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->currentDir:Ljava/io/File;
    invoke-static {v3}, Lorg/telegram/ui/DocumentSelectActivity;->access$000(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/io/File;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->dir:Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v3}, Lorg/telegram/ui/DocumentSelectActivity;->access$2000(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->title:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/DocumentSelectActivity;->access$1600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # invokes: Lorg/telegram/ui/DocumentSelectActivity;->listFiles(Ljava/io/File;)Z
    invoke-static {v3, v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$200(Lorg/telegram/ui/DocumentSelectActivity;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$1600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$2100(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    iget-object v1, v1, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    const-string/jumbo v2, "AccessError"

    const v3, 0x7f080027

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/telegram/ui/DocumentSelectActivity;->showErrorBox(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lorg/telegram/ui/DocumentSelectActivity;->access$1100(Lorg/telegram/ui/DocumentSelectActivity;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "/mnt/sdcard"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->sizeLimit:J
    invoke-static {v2}, Lorg/telegram/ui/DocumentSelectActivity;->access$1200(Lorg/telegram/ui/DocumentSelectActivity;)J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->sizeLimit:J
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$1200(Lorg/telegram/ui/DocumentSelectActivity;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    const-string/jumbo v1, "FileUploadLimit"

    const v2, 0x7f08020c

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->sizeLimit:J
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$1200(Lorg/telegram/ui/DocumentSelectActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lorg/telegram/ui/DocumentSelectActivity;->showErrorBox(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$1100(Lorg/telegram/ui/DocumentSelectActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v2}, Lorg/telegram/ui/DocumentSelectActivity;->access$2200(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$2300(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # setter for: Lorg/telegram/ui/DocumentSelectActivity;->scrolling:Z
    invoke-static {v0, v6}, Lorg/telegram/ui/DocumentSelectActivity;->access$802(Lorg/telegram/ui/DocumentSelectActivity;Z)Z

    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, v1, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0, v7}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$1300(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2, v7}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    goto :goto_3

    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->delegate:Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;
    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$700(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->delegate:Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$700(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity$6;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-interface {v0, v2, v1}, Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;->didSelectFiles(Lorg/telegram/ui/DocumentSelectActivity;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method
