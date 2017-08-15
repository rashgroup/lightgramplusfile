.class Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;
.super Ljava/lang/Object;
.source "ThemeEditorView.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;-><init>(Lorg/telegram/ui/Components/ThemeEditorView;Landroid/content/Context;[Lorg/telegram/ui/ActionBar/ThemeDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/ThemeEditorView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Lorg/telegram/ui/Components/ThemeEditorView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;->val$this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->listAdapter:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;
    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$1400(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v1

    # setter for: Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesription:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThemeEditorView;->access$202(Lorg/telegram/ui/Components/ThemeEditorView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    # setter for: Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesriptionPosition:I
    invoke-static {v0, p2}, Lorg/telegram/ui/Components/ThemeEditorView;->access$1502(Lorg/telegram/ui/Components/ThemeEditorView;I)I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesription:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView;->access$200(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesription:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView;->access$200(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "chat_wallpaper"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView;->wallpaperUpdater:Lorg/telegram/ui/Components/WallpaperUpdater;
    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView;->access$1600(Lorg/telegram/ui/Components/ThemeEditorView;)Lorg/telegram/ui/Components/WallpaperUpdater;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/WallpaperUpdater;->showAlert(Z)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ThemeDescription;->startEditing()V

    if-nez v1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->colorPicker:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;
    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$900(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentColor()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->setColor(I)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    # invokes: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->setColorPickerVisible(Z)V
    invoke-static {v0, v4}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$1700(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)V

    goto :goto_1
.end method
