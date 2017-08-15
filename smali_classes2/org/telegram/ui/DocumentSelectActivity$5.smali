.class Lorg/telegram/ui/DocumentSelectActivity$5;
.super Ljava/lang/Object;
.source "DocumentSelectActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


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

    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$900(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$1000(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->getItem(I)Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    const-string/jumbo v1, "AccessError"

    const v3, 0x7f080027

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lorg/telegram/ui/DocumentSelectActivity;->showErrorBox(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$1100(Lorg/telegram/ui/DocumentSelectActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->sizeLimit:J
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$1200(Lorg/telegram/ui/DocumentSelectActivity;)J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->sizeLimit:J
    invoke-static {v6}, Lorg/telegram/ui/DocumentSelectActivity;->access$1200(Lorg/telegram/ui/DocumentSelectActivity;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    const-string/jumbo v1, "FileUploadLimit"

    const v4, 0x7f08020c

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->sizeLimit:J
    invoke-static {v5}, Lorg/telegram/ui/DocumentSelectActivity;->access$1200(Lorg/telegram/ui/DocumentSelectActivity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v1, v4, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lorg/telegram/ui/DocumentSelectActivity;->showErrorBox(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$1100(Lorg/telegram/ui/DocumentSelectActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/DocumentSelectActivity;->access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$1300(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->actionModeViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$1400(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->actionModeViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$1400(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    const-string/jumbo v6, "scaleY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # setter for: Lorg/telegram/ui/DocumentSelectActivity;->scrolling:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/DocumentSelectActivity;->access$802(Lorg/telegram/ui/DocumentSelectActivity;Z)Z

    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {p1, v3, v3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$5;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/DocumentSelectActivity;->access$1500(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode()V

    :cond_6
    move v2, v3

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method
