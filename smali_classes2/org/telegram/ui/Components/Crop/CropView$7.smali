.class Lorg/telegram/ui/Components/Crop/CropView$7;
.super Ljava/lang/Object;
.source "CropView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Crop/CropView;->showAspectRatioDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Crop/CropView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Crop/CropView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView$7;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$7;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/Crop/CropView;->hasAspectRatioDialog:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView;->access$2302(Lorg/telegram/ui/Components/Crop/CropView;Z)Z

    return-void
.end method
