.class Lorg/telegram/ui/TaleSettingsActivity$ListAdapter$1;
.super Ljava/lang/Object;
.source "TaleSettingsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;

.field final synthetic val$textCell:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/TaleSettingsActivity$ListAdapter;

    iput-object p2, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter$1;->val$textCell:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/TaleSettingsActivity$ListAdapter$1;->val$textCell:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/tools/c/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
